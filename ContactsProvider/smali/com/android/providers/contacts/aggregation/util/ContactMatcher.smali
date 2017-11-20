.class public Lcom/android/providers/contacts/aggregation/util/ContactMatcher;
.super Ljava/lang/Object;
.source "ContactMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    }
.end annotation


# static fields
.field private static sMaxScore:[I

.field private static sMinScore:[I


# instance fields
.field private final mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

.field private final mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

.field private mScoreCount:I

.field private final mScoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field

.field private final mScores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x32

    .line 93
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    .line 95
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x63

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 111
    const/16 v0, 0x50

    invoke-static {v6, v6, v4, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 114
    const/16 v0, 0x1e

    invoke-static {v6, v8, v0, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 116
    invoke-static {v6, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 119
    invoke-static {v8, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 121
    invoke-static {v8, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 123
    invoke-static {v8, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 126
    invoke-static {v7, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 128
    invoke-static {v7, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 130
    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 248
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 249
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    return-void
.end method

.method private getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 253
    .local v0, "matchingScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-le v1, v2, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "matchingScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    check-cast v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 256
    .restart local v0    # "matchingScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->reset(J)V

    .line 261
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 262
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    return-object v0

    .line 258
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .end local v0    # "matchingScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-direct {v0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;-><init>(J)V

    .line 259
    .restart local v0    # "matchingScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMaxScore(II)I
    .locals 2
    .param p0, "candidateNameType"    # I
    .param p1, "nameType"    # I

    .prologue
    .line 158
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 159
    .local v0, "index":I
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static getMinScore(II)I
    .locals 2
    .param p0, "candidateNameType"    # I
    .param p1, "nameType"    # I

    .prologue
    .line 149
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 150
    .local v0, "index":I
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static setScoreRange(IIII)V
    .locals 2
    .param p0, "candidateNameType"    # I
    .param p1, "nameType"    # I
    .param p2, "scoreFrom"    # I
    .param p3, "scoreTo"    # I

    .prologue
    .line 139
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 140
    .local v0, "index":I
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    aput p2, v1, v0

    .line 141
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    aput p3, v1, v0

    .line 142
    return-void
.end method

.method private updatePrimaryScore(JI)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "score"    # I

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->updatePrimaryScore(I)V

    .line 346
    return-void
.end method

.method private updateSecondaryScore(JI)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "score"    # I

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->updateSecondaryScore(I)V

    .line 350
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 363
    return-void
.end method

.method public keepIn(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->keepIn()V

    .line 354
    return-void
.end method

.method public keepOut(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->keepOut()V

    .line 358
    return-void
.end method

.method public matchIdentity(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 271
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    .line 272
    return-void
.end method

.method public matchName(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 15
    .param p1, "contactId"    # J
    .param p3, "candidateNameType"    # I
    .param p4, "candidateName"    # Ljava/lang/String;
    .param p5, "nameType"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "algorithm"    # I

    .prologue
    .line 283
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMaxScore(II)I

    move-result v7

    .line 284
    .local v7, "maxScore":I
    if-nez v7, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 289
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v7}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    goto :goto_0

    .line 293
    :cond_2
    if-eqz p7, :cond_0

    .line 297
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMinScore(II)I

    move-result v8

    .line 298
    .local v8, "minScore":I
    if-eq v8, v7, :cond_0

    .line 305
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v2

    .line 306
    .local v2, "decodedCandidateName":[B
    invoke-static/range {p6 .. p6}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 313
    .local v3, "decodedName":[B
    const/4 v12, 0x1

    move/from16 v0, p7

    if-ne v0, v12, :cond_4

    iget-object v9, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 317
    .local v9, "nameDistance":Lcom/android/providers/contacts/aggregation/util/NameDistance;
    :goto_1
    invoke-virtual {v9, v2, v3}, Lcom/android/providers/contacts/aggregation/util/NameDistance;->getDistance([B[B)F

    move-result v4

    .line 318
    .local v4, "distance":F
    const/4 v12, 0x4

    move/from16 v0, p3

    if-eq v0, v12, :cond_3

    const/4 v12, 0x4

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    :cond_3
    const/4 v6, 0x1

    .line 320
    .local v6, "emailBased":Z
    :goto_2
    if-eqz v6, :cond_6

    const v11, 0x3f733333    # 0.95f

    .line 323
    .local v11, "threshold":F
    :goto_3
    cmpl-float v12, v4, v11

    if-lez v12, :cond_7

    .line 324
    int-to-float v12, v8

    sub-int v13, v7, v8

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 329
    .local v10, "score":I
    :goto_4
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v10}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    goto :goto_0

    .line 307
    .end local v2    # "decodedCandidateName":[B
    .end local v3    # "decodedName":[B
    .end local v4    # "distance":F
    .end local v6    # "emailBased":Z
    .end local v9    # "nameDistance":Lcom/android/providers/contacts/aggregation/util/NameDistance;
    .end local v10    # "score":I
    .end local v11    # "threshold":F
    :catch_0
    move-exception v5

    .line 309
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v12, "ContactMatcher"

    const-string v13, "Failed to decode normalized name.  Skipping."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 313
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "decodedCandidateName":[B
    .restart local v3    # "decodedName":[B
    :cond_4
    iget-object v9, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    goto :goto_1

    .line 318
    .restart local v4    # "distance":F
    .restart local v9    # "nameDistance":Lcom/android/providers/contacts/aggregation/util/NameDistance;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 320
    .restart local v6    # "emailBased":Z
    :cond_6
    const v11, 0x3f51eb85    # 0.82f

    goto :goto_3

    .line 326
    .restart local v11    # "threshold":F
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "score":I
    goto :goto_4
.end method

.method public pickBestMatch(IZ)J
    .locals 8
    .param p1, "threshold"    # I
    .param p2, "allowMultipleMatches"    # Z

    .prologue
    .line 400
    const-wide/16 v0, -0x1

    .line 401
    .local v0, "contactId":J
    const/4 v3, 0x0

    .line 402
    .local v3, "maxScore":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v2, v6, :cond_2

    .line 403
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 404
    .local v5, "score":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 402
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$400(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 409
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 429
    .end local v0    # "contactId":J
    .end local v5    # "score":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    :cond_2
    :goto_2
    return-wide v0

    .line 412
    .restart local v0    # "contactId":J
    .restart local v5    # "score":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    :cond_3
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$300(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I

    move-result v4

    .line 413
    .local v4, "s":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 414
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I

    move-result v4

    .line 417
    :cond_4
    if-lt v4, p1, :cond_0

    .line 418
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_5

    .line 419
    const-wide/16 v0, -0x2

    goto :goto_2

    .line 423
    :cond_5
    if-gt v4, v3, :cond_6

    if-ne v4, v3, :cond_0

    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 424
    :cond_6
    invoke-static {v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 425
    move v3, v4

    goto :goto_1
.end method

.method public pickBestMatches(I)Ljava/util/List;
    .locals 8
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 436
    mul-int/lit16 v4, p1, 0x3e8

    .line 437
    .local v4, "scaledThreshold":I
    iget-object v5, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 438
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v1, v5, :cond_0

    .line 441
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 442
    .local v2, "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getScore()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    :cond_0
    invoke-interface {v3, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public prepareSecondaryMatchCandidates(I)Ljava/util/List;
    .locals 6
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v1, v4, :cond_3

    .line 376
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 377
    .local v3, "score":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-static {v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I

    move-result v2

    .line 382
    .local v2, "s":I
    if-lt v2, p1, :cond_2

    .line 383
    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .restart local v0    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->access$302(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;I)I

    goto :goto_1

    .line 390
    .end local v2    # "s":I
    .end local v3    # "score":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScoreWithEmailMatch(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 337
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 338
    return-void
.end method

.method public updateScoreWithNicknameMatch(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 341
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 342
    return-void
.end method

.method public updateScoreWithPhoneNumberMatch(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 333
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 334
    return-void
.end method
