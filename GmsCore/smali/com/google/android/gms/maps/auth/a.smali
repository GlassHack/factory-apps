.class final Lcom/google/android/gms/maps/auth/a;
.super Lcom/google/android/gms/maps/auth/e;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/auth/ApiTokenService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/auth/ApiTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/auth/a;->a:Lcom/google/android/gms/maps/auth/ApiTokenService;

    invoke-direct {p0}, Lcom/google/android/gms/maps/auth/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/auth/a;->a:Lcom/google/android/gms/maps/auth/ApiTokenService;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
