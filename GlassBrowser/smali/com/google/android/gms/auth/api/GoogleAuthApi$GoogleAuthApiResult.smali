.class public interface abstract Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GoogleAuthApiResult"
.end annotation


# virtual methods
.method public abstract getErrorDescription()Ljava/lang/String;
.end method

.method public abstract getResolution()Landroid/app/PendingIntent;
.end method

.method public abstract getResponse()Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
.end method

.method public abstract isUserRecoverable()Z
.end method
