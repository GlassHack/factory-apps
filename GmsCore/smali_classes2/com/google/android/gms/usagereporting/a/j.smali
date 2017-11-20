.class public final Lcom/google/android/gms/usagereporting/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/usagereporting/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/usagereporting/a/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/usagereporting/a/k;-><init>(Lcom/google/android/gms/usagereporting/a/j;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gms/usagereporting/a/l;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/usagereporting/a/l;-><init>(Lcom/google/android/gms/usagereporting/a/j;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/usagereporting/f;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gms/usagereporting/a/m;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/usagereporting/a/m;-><init>(Lcom/google/android/gms/usagereporting/a/j;Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/common/api/j;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
