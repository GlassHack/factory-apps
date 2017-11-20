.class public abstract Lcom/android/providers/contacts/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field private static final KOREAN_JAUM_CONVERT_MAP:[I


# instance fields
.field private mNames:[Ljava/lang/String;

.field private mNicknameClusters:[[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x1100
        0x1101
        0x0
        0x1102
        0x0
        0x0
        0x1103
        0x1104
        0x1105
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1106
        0x1107
        0x1108
        0x0
        0x1109
        0x110a
        0x110b
        0x110c
        0x110d
        0x110e
        0x110f
        0x1110
        0x1111
        0x1112
    .end array-data
.end method

.method public constructor <init>(Lcom/android/providers/contacts/NameSplitter;)V
    .locals 1
    .param p1, "splitter"    # Lcom/android/providers/contacts/NameSplitter;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 77
    return-void
.end method

.method private appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V
    .locals 9
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3131

    const v7, 0xac00

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "position":I
    const/4 v1, 0x0

    .line 180
    .local v1, "consonantLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 181
    .local v4, "stringLength":I
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 184
    .local v0, "character":I
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 216
    :cond_0
    :goto_1
    if-lt v3, v4, :cond_8

    .line 220
    :cond_1
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 223
    :cond_2
    return-void

    .line 190
    :cond_3
    const/16 v5, 0x1100

    if-lt v0, v5, :cond_1

    const/16 v5, 0x1112

    if-le v0, v5, :cond_4

    if-lt v0, v8, :cond_1

    :cond_4
    const/16 v5, 0x314e

    if-le v0, v5, :cond_5

    if-lt v0, v7, :cond_1

    :cond_5
    const v5, 0xd7a3

    if-gt v0, v5, :cond_1

    .line 196
    if-lt v0, v7, :cond_7

    .line 200
    sub-int v5, v0, v7

    div-int/lit16 v5, v5, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 214
    :cond_6
    iget-object v5, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_7
    if-lt v0, v8, :cond_6

    .line 204
    add-int/lit16 v5, v0, -0x3131

    sget-object v6, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 208
    sget-object v5, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v6, v0, -0x3131

    aget v0, v5, v6

    .line 209
    if-nez v0, :cond_6

    goto :goto_2

    :cond_8
    move v2, v3

    .end local v3    # "position":I
    .restart local v2    # "position":I
    goto :goto_0
.end method

.method private appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "fullNameStyle"    # I

    .prologue
    .line 161
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 162
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 163
    .local v0, "name":Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    .line 164
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameLookupBuilder;->appendKoreanNameConsonantsLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;)V

    .line 170
    .end local v0    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_1
    return-void
.end method

.method private insertCollationKey(JJI)V
    .locals 8
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "tokenCount"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 290
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 296
    return-void
.end method

.method private insertNameVariant(JJIIZ)V
    .locals 8
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "tokenCount"    # I
    .param p6, "lookupType"    # I
    .param p7, "buildCollationKey"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 271
    if-eqz v7, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 279
    if-eqz p7, :cond_2

    .line 280
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 282
    :cond_2
    return-void
.end method

.method private insertNameVariants(JJIIZZ)V
    .locals 13
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .param p7, "initiallyExact"    # Z
    .param p8, "buildCollationKey"    # Z

    .prologue
    .line 241
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    .line 242
    if-eqz p7, :cond_1

    const/4 v8, 0x0

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 261
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v11, v2, p5

    .line 251
    .local v11, "firstToken":Ljava/lang/String;
    move/from16 v12, p5

    .local v12, "i":I
    :goto_1
    move/from16 v0, p6

    if-ge v12, v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v12

    aput-object v3, v2, p5

    .line 253
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, v12

    .line 255
    add-int/lit8 v7, p5, 0x1

    if-eqz p7, :cond_3

    move/from16 v0, p5

    if-ne v12, v0, :cond_3

    const/4 v9, 0x1

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 258
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v12

    .line 259
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, p5

    .line 251
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 255
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private insertNicknamePermutations(JJII)V
    .locals 14
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "fromIndex"    # I
    .param p6, "tokenCount"    # I

    .prologue
    .line 304
    move/from16 v11, p5

    .local v11, "i":I
    :goto_0
    move/from16 v0, p6

    if-ge v11, v0, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    aget-object v10, v1, v11

    .line 306
    .local v10, "clusters":[Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v13, v1, v11

    .line 308
    .local v13, "token":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    array-length v1, v10

    if-ge v12, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v10, v12

    aput-object v2, v1, v11

    .line 312
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 315
    add-int/lit8 v6, v11, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 308
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v13, v1, v11

    .line 304
    .end local v12    # "j":I
    .end local v13    # "token":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 320
    .end local v10    # "clusters":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fullNameStyle"    # I

    .prologue
    .line 328
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 331
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V
    .locals 4
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fullNameStyle"    # I

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "tokenCount":I
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameLookupForLocaleBasedName(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected abstract getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract insertNameLookup(JJILjava/lang/String;)V
.end method

.method public insertNameLookup(JJLjava/lang/String;I)V
    .locals 19
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "fullNameStyle"    # I

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "tokenCount":I
    if-nez v6, :cond_0

    .line 140
    :goto_0
    return-void

    .line 105
    :cond_0
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v6, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 105
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 109
    :cond_1
    const/4 v1, 0x4

    if-le v6, v1, :cond_2

    const/16 v18, 0x1

    .line 110
    .local v18, "tooManyTokens":Z
    :goto_2
    if-eqz v18, :cond_4

    .line 111
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/providers/contacts/NameLookupBuilder$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/providers/contacts/NameLookupBuilder$1;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v1, v2, v6, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 124
    .local v16, "firstToken":Ljava/lang/String;
    const/16 v17, 0x4

    :goto_3
    move/from16 v0, v17

    if-ge v0, v6, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v17

    aput-object v3, v1, v2

    .line 126
    const/4 v12, 0x4

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 124
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 109
    .end local v16    # "firstToken":Ljava/lang/String;
    .end local v18    # "tooManyTokens":Z
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 128
    .restart local v16    # "firstToken":Ljava/lang/String;
    .restart local v18    # "tooManyTokens":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    .line 130
    const/4 v6, 0x4

    .line 134
    .end local v16    # "firstToken":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v6, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 134
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 138
    :cond_5
    const/4 v12, 0x0

    if-nez v18, :cond_6

    const/4 v14, 0x1

    :goto_5
    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v15}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 139
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v14, 0x0

    goto :goto_5
.end method

.method protected normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
