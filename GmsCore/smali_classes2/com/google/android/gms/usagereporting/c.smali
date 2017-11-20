.class public abstract Lcom/google/android/gms/usagereporting/c;
.super Lcom/google/android/gms/common/api/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/gms/usagereporting/a;->a()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/g;-><init>(Lcom/google/android/gms/common/api/d;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
