.class abstract Lcom/google/android/location/places/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile b:Z

.field final synthetic c:Lcom/google/android/location/places/ui/aw;


# direct methods
.method private constructor <init>(Lcom/google/android/location/places/ui/aw;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/location/places/ui/az;->c:Lcom/google/android/location/places/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/az;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/places/ui/aw;B)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/location/places/ui/az;-><init>(Lcom/google/android/location/places/ui/aw;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/az;->b:Z

    .line 196
    return-void
.end method
