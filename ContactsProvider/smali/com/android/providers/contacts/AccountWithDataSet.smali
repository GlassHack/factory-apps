.class public Lcom/android/providers/contacts/AccountWithDataSet;
.super Ljava/lang/Object;
.source "AccountWithDataSet.java"


# static fields
.field public static final LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/android/providers/contacts/AccountWithDataSet;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/AccountWithDataSet;->LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Lcom/android/providers/contacts/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    .line 37
    invoke-static {p3}, Lcom/android/providers/contacts/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static final emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/AccountWithDataSet;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/android/providers/contacts/AccountWithDataSet;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 70
    instance-of v2, p1, Lcom/android/providers/contacts/AccountWithDataSet;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 72
    .local v0, "other":Lcom/android/providers/contacts/AccountWithDataSet;
    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 76
    .end local v0    # "other":Lcom/android/providers/contacts/AccountWithDataSet;
    :cond_0
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 84
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 82
    goto :goto_1
.end method

.method public inSystemAccounts([Landroid/accounts/Account;)Z
    .locals 6
    .param p1, "systemAccounts"    # [Landroid/accounts/Account;

    .prologue
    .line 100
    move-object v0, p1

    .local v0, "arr$":[Landroid/accounts/Account;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 101
    .local v3, "systemAccount":Landroid/accounts/Account;
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v4, 0x1

    .line 106
    .end local v3    # "systemAccount":Landroid/accounts/Account;
    :goto_1
    return v4

    .line 100
    .restart local v3    # "systemAccount":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "systemAccount":Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isLocalAccount()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/AccountWithDataSet;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
