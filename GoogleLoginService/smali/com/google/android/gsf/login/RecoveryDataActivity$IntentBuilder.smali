.class public Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;
.super Ljava/lang/Object;
.source "RecoveryDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/RecoveryDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "r_country"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method public setCountryListJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "countryList"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "r_country_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "r_phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public setSecondaryEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "secondaryEmail"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "r_secondaryEmail"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    return-void
.end method
