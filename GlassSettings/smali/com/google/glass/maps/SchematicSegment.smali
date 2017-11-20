.class public Lcom/google/glass/maps/SchematicSegment;
.super Ljava/lang/Object;
.source "SchematicSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/maps/SchematicSegment$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/maps/SchematicSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final color:I

.field public final isDotted:Z

.field public final type:Lcom/google/glass/maps/SchematicSegment$Type;

.field public final weight:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$1;

    invoke-direct {v0}, Lcom/google/glass/maps/SchematicSegment$1;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/SchematicSegment$Type;->valueOf(Ljava/lang/String;)Lcom/google/glass/maps/SchematicSegment$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    .line 33
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    .line 35
    return-void

    .line 34
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V
    .locals 0
    .param p1, "type"    # Lcom/google/glass/maps/SchematicSegment$Type;
    .param p2, "color"    # I
    .param p3, "isDotted"    # Z
    .param p4, "weight"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 25
    iput p2, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    .line 26
    iput-boolean p3, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    .line 27
    iput-wide p4, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v0}, Lcom/google/glass/maps/SchematicSegment$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 42
    iget-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    return-void
.end method
