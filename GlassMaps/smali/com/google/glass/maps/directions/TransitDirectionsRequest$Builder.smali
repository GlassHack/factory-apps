.class public Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TRIP_COUNT_WITH_ALTERNATES:I = 0x4


# instance fields
.field private final mActionType:I

.field private final mContext:Landroid/content/Context;

.field private mMaxTripCount:I

.field private mOptions:[Lcom/google/android/maps/driveabout/nav/b;

.field private final mTravelMode:I

.field private final mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;II)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mMaxTripCount:I

    .line 153
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 155
    iput p3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mTravelMode:I

    .line 156
    iput p4, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mActionType:I

    .line 157
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/maps/directions/TransitDirectionsRequest;
    .locals 8

    .prologue
    .line 170
    new-instance v0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mTravelMode:I

    iget v4, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mMaxTripCount:I

    iget v5, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mActionType:I

    iget-object v6, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mOptions:[Lcom/google/android/maps/driveabout/nav/b;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/glass/maps/directions/TransitDirectionsRequest$1;)V

    .line 172
    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->checkRequestValidity([Lcom/google/android/maps/driveabout/nav/ao;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->access$102(Lcom/google/glass/maps/directions/TransitDirectionsRequest;I)I

    .line 175
    :cond_0
    return-object v0
.end method

.method public setMaxTripCount(I)Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mMaxTripCount:I

    .line 161
    return-object p0
.end method

.method public setOptions([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->mOptions:[Lcom/google/android/maps/driveabout/nav/b;

    .line 166
    return-object p0
.end method
