.class final Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameLookupSelectionBuilder"
.end annotation


# instance fields
.field private final mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

.field private mSelection:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/providers/contacts/aggregation/ContactAggregator;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)V
    .locals 2
    .param p2, "splitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p3, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->this$0:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .line 1492
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "normalized_name IN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 1493
    iput-object p3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    .line 1494
    return-void
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "normalizedName"    # Ljava/lang/String;

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->this$0:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-static {v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->access$100(Lcom/android/providers/contacts/aggregation/ContactAggregator;)Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLookupType(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-static {v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1521
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-static {v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    iget-object v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-static {v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    iget v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mLookupType:I

    return v1

    .line 1520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1515
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "lookupType"    # I
    .param p6, "string"    # Ljava/lang/String;

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-virtual {v0, p6, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V

    .line 1505
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-static {v0, p6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1507
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->mNameLookupCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->isEmpty()Z

    move-result v0

    return v0
.end method
