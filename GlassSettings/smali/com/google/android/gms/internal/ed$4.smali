.class final Lcom/google/android/gms/internal/ed$4;
.super Lcom/google/android/gms/internal/eb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ed;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/eb;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Cj:Landroid/content/Context;

.field final synthetic LB:Lcom/google/android/gms/internal/eb;

.field final synthetic Ly:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ed$4;->Cj:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ed$4;->Ly:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ed$4;->LB:Lcom/google/android/gms/internal/eb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ed$4;->Cj:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ed$4;->Ly:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ed;->b(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ed$4;->LB:Lcom/google/android/gms/internal/eb;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/eb;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
