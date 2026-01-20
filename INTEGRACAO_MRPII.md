# Integração MRPII → Protótipo

## 📋 Visão Geral

Este documento explica como funciona a integração entre o MRPII e o Protótipo de Seleção de Máquinas.

## 🔄 Fluxo de Integração

### 1. **No MRPII** (`indexkhv2.html`)

Quando o usuário clica no botão **MÁQUINAS**, a aplicação redireciona para o protótipo com um parâmetro único na URL:

```javascript
function abrirPaginaMaquinas(){
    var host = window.location.hostname;
    var destino = (host === 'localhost' || host === '127.0.0.1')
        ? 'http://localhost:3000'
        : 'https://prototipo.lexusfx.com';

    // Parâmetro único para identificar que veio do MRPII (não abre modal)
    destino += '?fromMRPII=true';

    window.location.href = destino;
}
```

**URL resultante:**
```
https://prototipo.lexusfx.com?fromMRPII=true
```

### 2. **No Protótipo** (`src/app/page.tsx`)

O protótipo detecta o parâmetro da URL e:

1. ✅ Marca que veio do MRPII (átomo `vemDoMRPIIAtom`)
2. ✅ **NÃO abre o modal** - apenas mostra a tela principal
3. ✅ Fecha o modal inicial se estiver aberto
4. ✅ Limpa os parâmetros da URL

```typescript
useEffect(() => {
    if (typeof window === 'undefined') return;

    const params = new URLSearchParams(window.location.search);
    const fromMRPII = params.get('fromMRPII');

    // Verificar se veio do MRPII
    if (fromMRPII === 'true') {
        console.log('🚀 Acesso via MRPII - Modo visualização sem modal');

        // Marcar que veio do MRPII
        setVemDoMRPII(true);

        // FECHAR o modal inicial se estiver aberto
        setSelectorInicialCerrado(true);
        setSelectorManualAbierto(false);

        // Limpar os parâmetros da URL
        if (window.history && window.history.replaceState) {
            const cleanUrl = window.location.protocol + "//" +
                             window.location.host +
                             window.location.pathname;
            window.history.replaceState({}, document.title, cleanUrl);
        }
    }
}, [setVemDoMRPII]);
```

### 3. **Navegação pelo Protótipo**

Quando o usuário acessa via MRPII:

- ✅ Vê a **tela principal** com todas as máquinas
- ✅ Pode **clicar em qualquer máquina** para ver detalhes
- ✅ Pode **abrir o modal manualmente** clicando em "Seleccionar trabajo"
- ✅ Se abrir o modal e selecionar uma máquina:
  - O modal **pula o PIN** automaticamente
  - Redireciona direto para o MRPII com a máquina selecionada

```typescript
// No LoginModalMaquina.tsx
const handleIniciarMonitoreo = () => {
    // Se veio do MRPII, pular PIN e redirecionar direto
    if (vemDoMRPII) {
        handleRedirecionarParaMRPII();
        return;
    }

    // Caso contrário, mostrar modal de PIN
    setMostrarPin(true);
    setPin('');
    setErrorPin(false);
};
```

## 🎯 Resultado Final

### Fluxo Completo:

1. **MRPII** → Usuário clica em "MÁQUINAS"
2. **Redirecionamento** → `prototipo.lexusfx.com?fromMRPII=true`
3. **Protótipo** → **Mostra tela principal SEM modal**
4. **Usuário** → Visualiza máquinas ou clica em "Seleccionar trabajo"
5. Se selecionar máquina no modal:
   - **Protótipo** → **PULA O PIN** e redireciona direto
   - **MRPII** → `http://10.0.0.66/mrpii/indexkhv2.html?posicion=NOME_DA_MAQUINA`

### Diferenças no Fluxo:

| Origem | Abre Modal? | Mostra PIN? | Comportamento |
|--------|------------|-------------|---------------|
| Acesso direto ao protótipo | ✅ Sim (inicial) | ✅ Sim | Modal abre automático com PIN |
| Vindo do MRPII | ❌ Não | ❌ Não | Tela principal sem modal. Se abrir modal manualmente, pula PIN |

## 🔧 Arquivos Modificados

### MRPII:
- ✅ `/Volumes/web24$/mrpii/indexkhv2.html`
  - Função `abrirPaginaMaquinas()` modificada (linha ~3493)

### Protótipo:
- ✅ `/Volumes/Pen Max IT/Mockup-Maquinas-NoMapex/src/lib/atoms/produccion.ts`
  - Adicionado átomo `vemDoMRPIIAtom`

- ✅ `/Volumes/Pen Max IT/Mockup-Maquinas-NoMapex/src/app/page.tsx`
  - Adicionado useEffect para detectar parâmetros da URL

- ✅ `/Volumes/Pen Max IT/Mockup-Maquinas-NoMapex/src/components/produccion/LoginModalMaquina.tsx`
  - Modificada função `handleIniciarMonitoreo()`
  - Adicionada função `handleRedirecionarParaMRPII()`

## 🚀 Como Testar

1. Acesse o MRPII: `http://10.0.0.66/mrpii/indexkhv2.html`
2. Clique no botão **MÁQUINAS** na barra lateral
3. Você será redirecionado ao protótipo **SEM o modal aberto**
4. Você verá a tela principal com todas as máquinas
5. **Opção A - Apenas visualizar:**
   - Navegue e veja as máquinas disponíveis
6. **Opção B - Selecionar máquina:**
   - Clique em "Seleccionar trabajo"
   - Selecione uma máquina
   - Clique em "Iniciar monitoreo"
   - Você será redirecionado de volta ao MRPII **SEM precisar digitar PIN**

## 📝 Notas Importantes

- A autenticação foi **desabilitada no MRPII** conforme solicitado anteriormente
- O protótipo **mantém a autenticação por PIN** quando acessado diretamente
- A integração funciona em **ambos os ambientes** (localhost e produção)

## 🔒 Segurança

Esta integração pula a autenticação apenas quando:
1. O parâmetro `fromMRPII=true` está presente na URL
2. A origem é o botão "MÁQUINAS" do MRPII
3. O usuário abre o modal manualmente e seleciona uma máquina
4. O fluxo é unidirecional (MRPII → Protótipo → MRPII)

Para uso em produção, considere adicionar:
- Token de verificação entre sistemas
- Validação de origem (CORS)
- Timestamp de expiração no redirecionamento
