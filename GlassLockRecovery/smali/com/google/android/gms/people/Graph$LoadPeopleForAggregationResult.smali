.class public interface abstract Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/People$ReleasableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPeopleForAggregationResult"
.end annotation


# virtual methods
.method public abstract getEmailTypeMapBundle()Landroid/os/Bundle;
.end method

.method public abstract getGaiaMap()Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;
.end method

.method public abstract getPeople()Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;
.end method

.method public abstract getPhoneTypeMapBundle()Landroid/os/Bundle;
.end method
