.class public Lcom/google/glass/wifi/WifiNetwork$Builder;
.super Ljava/lang/Object;
.source "WifiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wifi/WifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final builderConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private final context:Landroid/content/Context;

.field private isUpdate:Z

.field private key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->context:Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->isUpdate:Z

    .line 125
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 126
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 127
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 128
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 129
    return-void
.end method

.method private maybeSetKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No WiFi key set.  Skipping encryption key."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setting preshared key for WPA_PSK key management."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->WPA_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 259
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setting WEP keys for NONE key management."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 264
    .local v0, "keyLength":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    :cond_4
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->WEP_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    aput-object v2, v1, v5

    goto/16 :goto_0

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto/16 :goto_0

    .line 271
    .end local v0    # "keyLength":I
    :cond_6
    invoke-static {}, Lcom/google/glass/wifi/WifiNetwork;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "A WiFi encryption key was set, but the selected key management is not known."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Lcom/google/glass/wifi/WifiNetwork$Builder;

    invoke-direct {v0, p0}, Lcom/google/glass/wifi/WifiNetwork$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/glass/wifi/WifiNetwork;
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork$Builder;->maybeSetKey()V

    .line 136
    new-instance v0, Lcom/google/glass/wifi/WifiNetwork;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->isUpdate:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/wifi/WifiNetwork;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    return-object v0
.end method

.method public setAuthAlgorithm(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 5
    .param p1, "authAlgorithm"    # I

    .prologue
    .line 166
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_AUTH_ALGORITHMS:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Auth algorithm value %s is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 171
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 1
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 225
    return-object p0
.end method

.method public setGroupCipher(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 5
    .param p1, "groupCipher"    # I

    .prologue
    .line 178
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_GROUP_CIPHERS:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Group cipher value %s is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 183
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->key:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setKeyManagement(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 5
    .param p1, "keyManagement"    # I

    .prologue
    .line 190
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_KEY_MANAGEMENT:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key management value %s is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 195
    return-object p0
.end method

.method public setPairwiseCipher(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 5
    .param p1, "pairwiseCipher"    # I

    .prologue
    .line 199
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_PAIRWISE_CIPHERS:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pairwise cipher value %s is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 204
    return-object p0
.end method

.method public setPriority(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 242
    return-object p0
.end method

.method public setProtocol(I)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 5
    .param p1, "protocol"    # I

    .prologue
    .line 211
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_PROTOCOLS:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol value %s is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 216
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->builderConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public updateIfExists(Z)Lcom/google/glass/wifi/WifiNetwork$Builder;
    .locals 0
    .param p1, "isUpdate"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/google/glass/wifi/WifiNetwork$Builder;->isUpdate:Z

    .line 146
    return-object p0
.end method
