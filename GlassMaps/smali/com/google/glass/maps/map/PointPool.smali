.class public Lcom/google/glass/maps/map/PointPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POOL:Ljava/lang/ThreadLocal;


# instance fields
.field public final A0:Lcom/google/android/maps/driveabout/model/ab;

.field public final A1:Lcom/google/android/maps/driveabout/model/ab;

.field public final A2:Lcom/google/android/maps/driveabout/model/ab;

.field public final A3:Lcom/google/android/maps/driveabout/model/ab;

.field public final B0:Lcom/google/android/maps/driveabout/model/ab;

.field public final B1:Lcom/google/android/maps/driveabout/model/ab;

.field public final B2:Lcom/google/android/maps/driveabout/model/ab;

.field public final B3:Lcom/google/android/maps/driveabout/model/ab;

.field public final C0:Lcom/google/android/maps/driveabout/model/ab;

.field public final C1:Lcom/google/android/maps/driveabout/model/ab;

.field public final C2:Lcom/google/android/maps/driveabout/model/ab;

.field public final C3:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/maps/map/PointPool$1;

    invoke-direct {v0}, Lcom/google/glass/maps/map/PointPool$1;-><init>()V

    sput-object v0, Lcom/google/glass/maps/map/PointPool;->POOL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 25
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 26
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 27
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->A3:Lcom/google/android/maps/driveabout/model/ab;

    .line 29
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->B0:Lcom/google/android/maps/driveabout/model/ab;

    .line 30
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->B1:Lcom/google/android/maps/driveabout/model/ab;

    .line 31
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->B2:Lcom/google/android/maps/driveabout/model/ab;

    .line 32
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->B3:Lcom/google/android/maps/driveabout/model/ab;

    .line 34
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->C0:Lcom/google/android/maps/driveabout/model/ab;

    .line 35
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->C1:Lcom/google/android/maps/driveabout/model/ab;

    .line 36
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->C2:Lcom/google/android/maps/driveabout/model/ab;

    .line 37
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/PointPool;->C3:Lcom/google/android/maps/driveabout/model/ab;

    return-void
.end method

.method public static getInstance()Lcom/google/glass/maps/map/PointPool;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/maps/map/PointPool;->POOL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/PointPool;

    return-object v0
.end method
