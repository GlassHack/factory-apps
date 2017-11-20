.class public Lcom/google/android/gms/auth/api/GoogleAuthApiException;
.super Ljava/lang/Exception;


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->px:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isUserRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiException;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
