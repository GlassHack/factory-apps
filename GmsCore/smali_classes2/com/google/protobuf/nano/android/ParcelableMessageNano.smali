.class public abstract Lcom/google/protobuf/nano/android/ParcelableMessageNano;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/protobuf/nano/android/b;

    invoke-direct {v0}, Lcom/google/protobuf/nano/android/b;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/android/ParcelableMessageNano;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    return-void
.end method
