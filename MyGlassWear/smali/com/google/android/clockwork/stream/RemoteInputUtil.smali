.class public Lcom/google/android/clockwork/stream/RemoteInputUtil;
.super Ljava/lang/Object;
.source "RemoteInputUtil.java"


# static fields
.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 2
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 14
    new-instance v0, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v1, "resultKey"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "label"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    const-string v1, "choices"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    const-string v1, "allowFreeFormInput"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    const-string v1, "extras"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundleArray([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;
    .locals 3
    .param p0, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 45
    const/4 v1, 0x0

    .line 51
    :cond_0
    return-object v1

    .line 47
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Landroid/support/v4/app/RemoteInput;

    .line 48
    .local v1, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 49
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/android/clockwork/stream/RemoteInputUtil;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;
    .locals 3
    .param p0, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "resultKey"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "label"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    const-string v1, "choices"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 27
    const-string v1, "allowFreeFormInput"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    const-string v1, "extras"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method

.method public static toBundleArray([Landroid/support/v4/app/RemoteInput;)[Landroid/os/Bundle;
    .locals 3
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 40
    :cond_0
    return-object v0

    .line 36
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Landroid/os/Bundle;

    .line 37
    .local v0, "bundles":[Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 38
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/android/clockwork/stream/RemoteInputUtil;->toBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
