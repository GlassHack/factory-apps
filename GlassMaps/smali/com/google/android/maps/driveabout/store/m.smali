.class public abstract Lcom/google/android/maps/driveabout/store/m;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/store/p;

.field private b:I

.field private c:Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 1335
    new-array v0, p1, [Lcom/google/android/maps/driveabout/store/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    .line 1336
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    .line 1337
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/m;)Lcom/google/android/maps/driveabout/store/i;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->c:Lcom/google/android/maps/driveabout/store/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/m;->c:Lcom/google/android/maps/driveabout/store/i;

    return-object p1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 1399
    const/4 v0, -0x1

    return v0
.end method

.method protected final a(I)Lcom/google/android/maps/driveabout/store/p;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    return v0
.end method

.method protected abstract b(I)Lcom/google/android/maps/driveabout/model/av;
.end method

.method protected final b(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 3

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    aput-object p1, v0, v1

    .line 1344
    return-void
.end method

.method protected final c()Z
    .locals 2

    .prologue
    .line 1364
    iget v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(I)[B
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldBypassUiUpdate()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1369
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1373
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/p;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1377
    :goto_1
    return v0

    .line 1369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
