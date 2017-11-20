.class final Lcom/google/android/gms/usagereporting/a/s;
.super Lcom/google/android/gms/usagereporting/a/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/usagereporting/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/o;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/s;->a:Lcom/google/android/gms/usagereporting/a/o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/a/t;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "UsageReportingClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect(): Could not unregister listener: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method
