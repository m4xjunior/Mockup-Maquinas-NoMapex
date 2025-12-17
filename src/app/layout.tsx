import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Mockup Máquinas NoMapex",
  description: "Aplicação Next.js com React",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es">
      <body>{children}</body>
    </html>
  );
}

