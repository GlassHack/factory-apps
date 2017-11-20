.class public Lcom/google/android/gsf/login/RecoveryDataActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "RecoveryDataActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;,
        Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;,
        Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mBadPreviousEmailText:Ljava/lang/String;

.field private mBadPreviousPhoneText:Ljava/lang/String;

.field private mCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryListJson:Ljava/lang/String;

.field private mCountrySpinner:Landroid/widget/Spinner;

.field private mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

.field private mNextButton:Landroid/view/View;

.field private mPhoneNumberEdit:Landroid/widget/EditText;

.field private mSecondaryEmailEdit:Landroid/widget/EditText;

.field private mSecondaryEmailError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousPhoneText:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousEmailText:Ljava/lang/String;

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/RecoveryDataActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validateEmailInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/RecoveryDataActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validatePhoneInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/RecoveryDataActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/RecoveryDataActivity;)Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/gsf/login/RecoveryDataActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/RecoveryDataActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailError:Z

    return p1
.end method

.method private static getCountryNameArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 465
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 466
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;

    iget-object v2, v2, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-object v1
.end method

.method public static getIntentBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/login/RecoveryDataActivity$IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private hasRejectedValueInFields()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 415
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousEmailText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousEmailText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousPhoneText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousPhoneText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCountrySpinner(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03000a

    invoke-static {p1}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getCountryNameArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 459
    .local v0, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 460
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 461
    return-void
.end method

.method private initViews(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/16 v13, 0x8

    .line 159
    const v11, 0x7f03001b

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->setContentView(I)V

    .line 160
    const v11, 0x7f08000f

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mNextButton:Landroid/view/View;

    .line 161
    const v11, 0x7f080018

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBackButton:Landroid/view/View;

    .line 162
    const v11, 0x7f080017

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    .line 163
    const v11, 0x7f080054

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    .line 164
    const v11, 0x7f080055

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    .line 166
    const-string v11, "r_detail"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "detailStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->BOTH:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    :goto_0
    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    .line 172
    const-string v11, "r_country_list"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryListJson:Ljava/lang/String;

    .line 173
    const-string v11, "r_country"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "defaultCountryCode":Ljava/lang/String;
    const-string v11, "r_secondaryEmail"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "secondaryEmail":Ljava/lang/String;
    const-string v11, "r_phone_number"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "phoneNumber":Ljava/lang/String;
    const-string v11, "r__error"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "error":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    .line 179
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "defaultCountryIndex":Ljava/lang/Integer;
    :try_start_0
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryListJson:Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity;->parseCountryParams(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 186
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;>;>;"
    if-eqz v6, :cond_0

    .line 187
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 188
    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryList:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;>;>;"
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    sget-object v12, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->PHONE_ONLY:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    if-eq v11, v12, :cond_5

    .line 195
    if-eqz v9, :cond_1

    .line 196
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_1
    :goto_2
    if-eqz v2, :cond_7

    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    sget-object v12, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->EMAIL_ONLY:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    if-eq v11, v12, :cond_7

    .line 204
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryList:Ljava/util/List;

    invoke-direct {p0, v11, v2}, Lcom/google/android/gsf/login/RecoveryDataActivity;->initCountrySpinner(Ljava/util/List;Ljava/lang/Integer;)V

    .line 206
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 207
    .local v10, "tMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "phoneFromSim":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 209
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .end local v7    # "phoneFromSim":Ljava/lang/String;
    .end local v10    # "tMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 220
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/RecoveryDataActivity;->handleError(Ljava/lang/String;)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->updateWidgetState()V

    .line 223
    return-void

    .line 171
    .end local v1    # "defaultCountryCode":Ljava/lang/String;
    .end local v2    # "defaultCountryIndex":Ljava/lang/Integer;
    .end local v5    # "error":Ljava/lang/String;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "secondaryEmail":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    move-result-object v11

    goto :goto_0

    .line 190
    .restart local v1    # "defaultCountryCode":Ljava/lang/String;
    .restart local v2    # "defaultCountryIndex":Ljava/lang/Integer;
    .restart local v5    # "error":Ljava/lang/String;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "secondaryEmail":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Lorg/json/JSONException;
    const-string v11, "RecoveryDataActivity"

    const-string v12, "Unable to parse country list"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 199
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_5
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 210
    .restart local v7    # "phoneFromSim":Ljava/lang/String;
    .restart local v10    # "tMgr":Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "0000000000"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 212
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 215
    .end local v7    # "phoneFromSim":Ljava/lang/String;
    .end local v10    # "tMgr":Landroid/telephony/TelephonyManager;
    :cond_7
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v13}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 216
    iget-object v11, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3
.end method

.method private initializeListeners()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->setBackButton(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mNextButton:Landroid/view/View;

    new-instance v1, Lcom/google/android/gsf/login/RecoveryDataActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/RecoveryDataActivity$1;-><init>(Lcom/google/android/gsf/login/RecoveryDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gsf/login/RecoveryDataActivity$2;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/login/RecoveryDataActivity$2;-><init>(Lcom/google/android/gsf/login/RecoveryDataActivity;Z)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 283
    return-void
.end method

.method private isValidPhone(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 430
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 431
    .local v2, "len":I
    const/16 v4, 0x80

    if-gt v2, v4, :cond_0

    .line 434
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 435
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 436
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->isValidPhoneChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isValidPhoneChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 444
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseCountryParams(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p0, "countriesJson"    # Ljava/lang/String;
    .param p1, "defaultCountryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    const/4 v7, 0x0

    .line 491
    :goto_0
    return-object v7

    .line 476
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v2, "countryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 479
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 480
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 481
    .local v3, "entry":Lorg/json/JSONObject;
    const-string v7, "r_country_code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "code":Ljava/lang/String;
    const-string v7, "r_country_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-nez v1, :cond_2

    .line 479
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 486
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 487
    move v5, v4

    .line 489
    :cond_3
    new-instance v7, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;

    invoke-direct {v7, v6, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 491
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "entry":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private storeBadEmailText()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousEmailText:Ljava/lang/String;

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->updateWidgetState()V

    .line 405
    :cond_0
    return-void
.end method

.method private storeBadPhoneText()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mBadPreviousPhoneText:Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->updateWidgetState()V

    .line 412
    :cond_0
    return-void
.end method

.method private validateEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 448
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validateDomainNameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 449
    :cond_0
    const/4 p1, 0x0

    .line 451
    :cond_1
    return-object p1
.end method

.method private validateEmailInput()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 357
    .local v0, "email":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validateEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "validatedEmail":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailError:Z

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 361
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadEmailText()V

    .line 372
    .end local v1    # "validatedEmail":Ljava/lang/String;
    :goto_0
    return v2

    .line 363
    .restart local v1    # "validatedEmail":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 364
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const v4, 0x7f0700e8

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 365
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadEmailText()V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 372
    .end local v1    # "validatedEmail":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validatePhoneInput()Z
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 343
    .local v0, "phone":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/RecoveryDataActivity;->isValidPhone(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    const v2, 0x7f0700eb

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 346
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadPhoneText()V

    .line 347
    const/4 v1, 0x0

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 352
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected handleError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v2, "BadPhone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    const v3, 0x7f0700ec

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 320
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadPhoneText()V

    .line 339
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v2, "BadEmail"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const v3, 0x7f0700e8

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadEmailText()V

    goto :goto_0

    .line 324
    :cond_1
    const-string v2, "EmailSameAsPrimary"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const v2, 0x7f0700e9

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 327
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->storeBadEmailText()V

    goto :goto_0

    .line 328
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    const-string v2, "BadCountry"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700ed

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 332
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 334
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700ee

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "state":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->initViews(Landroid/os/Bundle;)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->initializeListeners()V

    .line 142
    return-void

    .line 138
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_0
    move-object v0, p1

    .restart local v0    # "state":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 295
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_3

    if-nez p2, :cond_3

    .line 296
    iget-boolean v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailError:Z

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "secondaryEmail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validateEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "validatedEmail":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 305
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    const v3, 0x7f0700e8

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    .end local v0    # "secondaryEmail":Ljava/lang/String;
    .end local v1    # "validatedEmail":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->validatePhoneInput()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string v1, "r_detail"

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mDetail:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "r_secondaryEmail"

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "r_phone_number"

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "r_country_list"

    iget-object v2, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryListJson:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 153
    .local v0, "pos":I
    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 154
    const-string v2, "r_country"

    iget-object v1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mCountryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;

    iget-object v1, v1, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;->code:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 382
    iget-object v7, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 383
    .local v0, "email":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mPhoneNumberEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 390
    .local v2, "phone":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 391
    .local v3, "validEmail":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    .line 392
    .local v4, "validPhone":Z
    :goto_1
    iget-boolean v7, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mSecondaryEmailError:Z

    if-nez v7, :cond_3

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/RecoveryDataActivity;->hasRejectedValueInFields()Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 396
    .local v1, "enableOk":Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 397
    iget-object v5, p0, Lcom/google/android/gsf/login/RecoveryDataActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 398
    return-void

    .end local v1    # "enableOk":Z
    .end local v3    # "validEmail":Z
    .end local v4    # "validPhone":Z
    :cond_1
    move v3, v6

    .line 390
    goto :goto_0

    .restart local v3    # "validEmail":Z
    :cond_2
    move v4, v6

    .line 391
    goto :goto_1

    .restart local v4    # "validPhone":Z
    :cond_3
    move v1, v6

    .line 392
    goto :goto_2
.end method
