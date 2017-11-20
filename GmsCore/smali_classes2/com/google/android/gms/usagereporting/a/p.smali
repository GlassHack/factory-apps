.class final Lcom/google/android/gms/usagereporting/a/p;
.super Lcom/google/android/gms/usagereporting/a/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/usagereporting/c;

.field final synthetic b:Lcom/google/android/gms/usagereporting/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/p;->b:Lcom/google/android/gms/usagereporting/a/o;

    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/p;->a:Lcom/google/android/gms/usagereporting/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/a/t;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/p;->a:Lcom/google/android/gms/usagereporting/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/p;->a:Lcom/google/android/gms/usagereporting/c;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    goto :goto_0
.end method
