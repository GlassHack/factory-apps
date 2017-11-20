.class public interface abstract Lcom/google/android/gms/usagereporting/UsageReportingApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;,
        Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;,
        Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptions;
    }
.end annotation


# virtual methods
.method public abstract getOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setOptInOptionsChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
