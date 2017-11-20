.class Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApi$a;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pt:Lcom/google/android/gms/common/api/Status;

.field final synthetic pu:Lcom/google/android/gms/auth/api/GoogleAuthApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/GoogleAuthApi$a;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;->pu:Lcom/google/android/gms/auth/api/GoogleAuthApi$a;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;->pt:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Error binding service!"

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponse()Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;->pt:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isUserRecoverable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
