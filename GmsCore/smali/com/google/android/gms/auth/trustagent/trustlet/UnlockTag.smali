.class public Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/am;

    invoke-direct {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a:I

    .line 140
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->d:[Ljava/lang/String;

    .line 143
    if-nez p5, :cond_0

    const-string p5, "NFC Unlock Tag"

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e:Ljava/lang/String;

    .line 144
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 234
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 236
    const-string v0, "te"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v0, v6

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const-string v0, "na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    if-ne v4, v1, :cond_1

    .line 240
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_1
    return-object v0

    .line 242
    :cond_1
    if-nez v4, :cond_2

    .line 243
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    const/4 v4, 0x0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "Coffee - UnlockTag"

    const-string v2, "Failed to encode tag due to missing algo: SHA-256"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/nfc/Tag;Lcom/google/android/gms/auth/trustagent/trustlet/an;)V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ao;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/an;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/nfc/Tag;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method

.method static synthetic b(Landroid/nfc/Tag;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-class v2, Landroid/nfc/tech/NfcA;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v2, Landroid/nfc/tech/NfcB;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e:Ljava/lang/String;

    .line 164
    return-void
.end method

.method final a(Landroid/nfc/Tag;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 167
    iget v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a:I

    if-nez v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a:I

    if-ne v1, v2, :cond_0

    .line 170
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 175
    new-instance v2, Lcom/google/android/gms/auth/trustagent/trustlet/ad;

    invoke-direct {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;-><init>(Landroid/nfc/tech/IsoDep;)V

    .line 177
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 191
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v1

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([B)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 191
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 193
    :catch_3
    move-exception v1

    goto :goto_0

    .line 186
    :catch_4
    move-exception v1

    .line 187
    :try_start_6
    const-string v3, "Coffee - UnlockTag"

    const-string v4, "Failed to verify Precious tag"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 192
    :goto_1
    throw v0

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e:Ljava/lang/String;

    return-object v0
.end method

.method final d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method final e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v1, "pr"

    iget v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v1, "te"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->d:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "na"

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    iget v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 227
    const-string v1, "ch"

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "Coffee - UnlockTag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to serialize unlock tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
