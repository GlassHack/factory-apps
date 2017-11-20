.class final Lcom/google/android/location/internal/server/n;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/m;


# direct methods
.method public constructor <init>(Lcom/google/android/location/internal/server/m;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/location/internal/server/n;->a:Lcom/google/android/location/internal/server/m;

    .line 163
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 164
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 174
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/location/internal/server/m;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyContentObserver: change is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/n;->a:Lcom/google/android/location/internal/server/m;

    invoke-static {v0}, Lcom/google/android/location/internal/server/m;->a(Lcom/google/android/location/internal/server/m;)V

    .line 176
    return-void
.end method
