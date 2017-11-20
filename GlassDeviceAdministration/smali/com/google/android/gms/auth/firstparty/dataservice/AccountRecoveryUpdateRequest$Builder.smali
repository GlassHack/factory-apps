.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private pT:Ljava/lang/String;

.field private pU:Ljava/lang/String;

.field private pV:Ljava/lang/String;

.field private qa:Ljava/lang/String;

.field private qb:Z

.field private qc:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;
    .locals 8

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pU:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pV:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qa:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qb:Z

    iget-object v7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qc:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pT:Ljava/lang/String;

    return-object p0
.end method

.method public setBroadUse(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "isBroadUse"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qb:Z

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qc:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setPhoneCountryCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->qa:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pV:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;
    .locals 0
    .param p1, "secondaryEmail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest$Builder;->pU:Ljava/lang/String;

    return-object p0
.end method
