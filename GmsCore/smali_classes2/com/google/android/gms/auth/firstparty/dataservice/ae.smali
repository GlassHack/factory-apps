.class final Lcom/google/android/gms/auth/firstparty/dataservice/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ak;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/google/android/gms/auth/firstparty/dataservice/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->c:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/auth/firstparty/dataservice/ao;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ao;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
