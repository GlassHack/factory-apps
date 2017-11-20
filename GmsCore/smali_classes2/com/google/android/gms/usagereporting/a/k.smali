.class final Lcom/google/android/gms/usagereporting/a/k;
.super Lcom/google/android/gms/usagereporting/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/usagereporting/a/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/j;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/k;->d:Lcom/google/android/gms/usagereporting/a/j;

    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/usagereporting/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/usagereporting/a/n;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/gms/usagereporting/a/n;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/usagereporting/a/n;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/usagereporting/a/k;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 60
    return-void
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/google/android/gms/usagereporting/a/o;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/c;)V

    return-void
.end method
