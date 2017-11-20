.class public Lcom/google/android/gms/auth/af;
.super Lcom/google/android/gms/auth/q;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/auth/af;->a:Landroid/content/Intent;

    .line 18
    return-void
.end method


# virtual methods
.method public final b()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/af;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/af;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method
