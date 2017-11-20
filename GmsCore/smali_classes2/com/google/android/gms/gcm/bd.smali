.class public abstract Lcom/google/android/gms/gcm/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/gcm/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must provide a valid tag by calling setTag(String)."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/gcm/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Must provide an endpoint for this task by calling setService(ComponentName)."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method
