.class Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAggregationModeQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactIdAndAggregationModeQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 550
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
