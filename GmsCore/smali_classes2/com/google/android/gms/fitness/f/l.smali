.class final Lcom/google/android/gms/fitness/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/j;

.field final synthetic b:Lcom/google/android/gms/fitness/f/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/f/j;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/gms/fitness/f/l;->b:Lcom/google/android/gms/fitness/f/j;

    iput-object p2, p0, Lcom/google/android/gms/fitness/f/l;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 2

    .prologue
    .line 118
    check-cast p1, Lcom/google/android/gms/wearable/e;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/e;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unable to save to: /fitness/WearableAccountManager/all_accounts"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/l;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    return-void
.end method
