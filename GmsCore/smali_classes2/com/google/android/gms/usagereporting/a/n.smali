.class final Lcom/google/android/gms/usagereporting/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/usagereporting/g;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/n;->a:Lcom/google/android/gms/common/api/Status;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/n;->b:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/a/n;->b:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/a/n;->b:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/n;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
