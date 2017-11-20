.class public Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
.super Ljava/lang/Object;
.source "ContactMatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/util/ContactMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mKeepIn:Z

.field private mKeepOut:Z

.field private mMatchCount:I

.field private mPrimaryScore:I

.field private mSecondaryScore:I


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "contactId"    # J

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-wide p1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mContactId:J

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepOut:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 166
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    .param p1, "x1"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepIn:Z

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I
    .locals 2
    .param p1, "another"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->compareTo(Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;)I

    move-result v0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mContactId:J

    return-wide v0
.end method

.method public getScore()I
    .locals 3

    .prologue
    .line 214
    iget-boolean v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepOut:Z

    if-eqz v1, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 218
    :cond_0
    iget-boolean v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepIn:Z

    if-eqz v1, :cond_1

    .line 219
    const/16 v1, 0x64

    goto :goto_0

    .line 222
    :cond_1
    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    iget v2, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    if-le v1, v2, :cond_2

    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 226
    .local v0, "score":I
    :goto_1
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 222
    .end local v0    # "score":I
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    goto :goto_1
.end method

.method public keepIn()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepIn:Z

    .line 207
    return-void
.end method

.method public keepOut()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepOut:Z

    .line 211
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-wide p1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mContactId:J

    .line 180
    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepIn:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mKeepOut:Z

    .line 182
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 183
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    .line 184
    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePrimaryScore(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    if-le p1, v0, :cond_0

    .line 193
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    .line 196
    return-void
.end method

.method public updateSecondaryScore(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 199
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    if-le p1, v0, :cond_0

    .line 200
    iput p1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mSecondaryScore:I

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->mMatchCount:I

    .line 203
    return-void
.end method
