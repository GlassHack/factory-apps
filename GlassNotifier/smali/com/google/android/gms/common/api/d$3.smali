.class Lcom/google/android/gms/common/api/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TE:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$3;->TE:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hJ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public iA()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$3;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->g(Lcom/google/android/gms/common/api/d;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$3;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    return v0
.end method
