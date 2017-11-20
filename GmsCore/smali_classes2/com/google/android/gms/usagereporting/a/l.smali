.class final Lcom/google/android/gms/usagereporting/a/l;
.super Lcom/google/android/gms/usagereporting/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

.field final synthetic e:Lcom/google/android/gms/usagereporting/a/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/j;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/l;->e:Lcom/google/android/gms/usagereporting/a/j;

    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/l;->d:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 67
    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/google/android/gms/usagereporting/a/o;

    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/l;->d:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/c;)V

    return-void
.end method
