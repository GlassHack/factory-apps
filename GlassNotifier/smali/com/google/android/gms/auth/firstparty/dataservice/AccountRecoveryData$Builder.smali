.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Hm:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field private Hn:Ljava/lang/String;

.field private Ho:Ljava/lang/String;

.field private Hp:Ljava/lang/String;

.field private Hq:Ljava/lang/String;

.field private Hr:Ljava/lang/String;

.field private Hs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;"
        }
    .end annotation
.end field

.field private Ht:Ljava/lang/String;

.field private Hu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 11

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hm:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iget-object v3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hn:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Ho:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hp:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hq:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hr:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hs:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Ht:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hu:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;-><init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hp:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountRecoveryGuidance(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "guidance"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hm:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hn:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowedRecoveryOption(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Ho:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryList(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;)",
            "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "countryList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/Country;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hs:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Ht:Ljava/lang/String;

    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hu:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hr:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;
    .locals 0
    .param p1, "secondaryEmail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData$Builder;->Hq:Ljava/lang/String;

    return-object p0
.end method
