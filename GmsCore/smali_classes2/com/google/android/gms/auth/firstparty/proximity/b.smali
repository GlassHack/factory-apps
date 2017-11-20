.class final Lcom/google/android/gms/auth/firstparty/proximity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/proximity/c;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

.field final synthetic b:Lcom/google/android/gms/auth/firstparty/proximity/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/b;->b:Lcom/google/android/gms/auth/firstparty/proximity/a;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/proximity/b;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/d;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/b;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/d;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
