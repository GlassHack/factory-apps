.class public final Lcom/google/android/maps/driveabout/model/w;
.super Lcom/google/android/maps/driveabout/model/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p10}, Lcom/google/android/maps/driveabout/model/v;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[I)V

    .line 34
    return-void
.end method

.method public static b(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/v;
    .locals 6

    .prologue
    .line 49
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/model/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xb

    return v0
.end method
