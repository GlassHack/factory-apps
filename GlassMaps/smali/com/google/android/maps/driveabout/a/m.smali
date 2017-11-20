.class public Lcom/google/android/maps/driveabout/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/a/n;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/m;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 296
    const-string v0, "THEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 298
    :cond_0
    const-string v0, "GPS_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "DATA_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    const/4 v0, 0x2

    goto :goto_0

    .line 302
    :cond_2
    const-string v0, "NAVIGATION_RESUMED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const/4 v0, 0x3

    goto :goto_0

    .line 304
    :cond_3
    const-string v0, "PLEASE_DESCRIBE_PROBLEM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    const/4 v0, 0x4

    goto :goto_0

    .line 306
    :cond_4
    const-string v0, "ARRIVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    const/4 v0, 0x5

    goto :goto_0

    .line 308
    :cond_5
    const-string v0, "WILL_ARRIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 309
    const/4 v0, 0x6

    goto :goto_0

    .line 310
    :cond_6
    const-string v0, "DESTINATION_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    const/4 v0, 0x7

    goto :goto_0

    .line 312
    :cond_7
    const-string v0, "DESTINATION_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    const/16 v0, 0x8

    goto :goto_0

    .line 314
    :cond_8
    const-string v0, "DESTINATION_WILL_BE_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    const/16 v0, 0x9

    goto :goto_0

    .line 316
    :cond_9
    const-string v0, "DESTINATION_WILL_BE_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    const/16 v0, 0xa

    goto :goto_0

    .line 318
    :cond_a
    const-string v0, "GENERIC_CONTINUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 319
    const/16 v0, 0xb

    goto :goto_0

    .line 321
    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;
    .locals 1

    .prologue
    .line 288
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/a/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/a/r;-><init>(Lcom/google/android/maps/driveabout/a/m;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/a/m;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/a/p;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/a/p;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    .line 278
    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/a/p;->a(Lcom/google/android/maps/driveabout/a/m;)V

    .line 279
    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/a/p;->a(Lcom/google/android/maps/driveabout/a/m;)V

    .line 280
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/a/p;->a()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
