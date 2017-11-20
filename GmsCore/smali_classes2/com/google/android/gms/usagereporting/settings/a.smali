.class final Lcom/google/android/gms/usagereporting/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/settings/a;->a:Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 4

    .prologue
    .line 137
    check-cast p1, Lcom/google/android/gms/usagereporting/g;

    invoke-interface {p1}, Lcom/google/android/gms/usagereporting/g;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UsageReportingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOptInOptions() returned not success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/settings/a;->a:Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;

    invoke-interface {p1}, Lcom/google/android/gms/usagereporting/g;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;->a(Lcom/google/android/gms/usagereporting/settings/UsageReportingActivity;Z)V

    goto :goto_0
.end method
