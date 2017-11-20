.class Lcom/google/android/gms/common/api/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xw:Lcom/google/android/gms/common/api/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$3;->xw:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bD()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cr()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$3;->xw:Lcom/google/android/gms/common/api/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->g(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$3;->xw:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    return v0
.end method
