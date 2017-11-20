.class Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchCandidateList"
.end annotation


# instance fields
.field private mCount:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/aggregation/ContactAggregator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$1;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    .prologue
    .line 212
    iget v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameLookupType"    # I

    .prologue
    .line 220
    iget v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    invoke-direct {v2, p1, p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    .line 228
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    .line 224
    .local v0, "candidate":Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;
    iput-object p1, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 225
    iput p2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mLookupType:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    .line 232
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
