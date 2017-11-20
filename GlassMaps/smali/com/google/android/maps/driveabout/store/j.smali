.class final Lcom/google/android/maps/driveabout/store/j;
.super Lcom/google/android/maps/driveabout/util/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/i;I)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/j;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/p;)V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    .line 219
    return-void
.end method


# virtual methods
.method public final synthetic onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Lcom/google/android/maps/driveabout/model/aw;

    check-cast p2, Lcom/google/android/maps/driveabout/store/p;

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/store/j;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/p;)V

    return-void
.end method
