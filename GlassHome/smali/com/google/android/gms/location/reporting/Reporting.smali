.class public interface abstract Lcom/google/android/gms/location/reporting/Reporting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;,
        Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;,
        Lcom/google/android/gms/location/reporting/Reporting$Setting;
    }
.end annotation


# static fields
.field public static final SETTINGS_CHANGED:Ljava/lang/String; = "com.google.android.gms.location.reporting.SETTINGS_CHANGED"


# virtual methods
.method public abstract cancelUpload(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReportingState(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reportPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/gms/location/places/PlaceReport;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestUpload(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/location/reporting/UploadRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tryOptIn(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
