.class Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameMatchCandidate"
.end annotation


# instance fields
.field mLookupType:I

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameLookupType"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 204
    iput p2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mLookupType:I

    .line 205
    return-void
.end method
