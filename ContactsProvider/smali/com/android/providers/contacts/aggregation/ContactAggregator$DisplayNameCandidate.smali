.class Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayNameCandidate"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field displayNameSource:I

.field rawContactId:J

.field verified:Z

.field writableAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 252
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 257
    iput v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 258
    iput-boolean v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 260
    return-void
.end method
