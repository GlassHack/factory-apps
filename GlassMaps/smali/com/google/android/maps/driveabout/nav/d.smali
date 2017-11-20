.class final Lcom/google/android/maps/driveabout/nav/d;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Locale;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/d;->a:Ljava/util/Locale;

    .line 380
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/d;->b:Landroid/content/Context;

    .line 381
    return-void
.end method


# virtual methods
.method public final getRequestType()I
    .locals 1

    .prologue
    .line 385
    const/16 v0, 0x2b

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/d;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    .line 407
    :cond_0
    sget-object v0, Lcom/google/j/b/a/b/h;->s:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/d;->a:Ljava/util/Locale;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/nav/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    .line 410
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/d;->a:Ljava/util/Locale;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/nav/c;->a(Ljava/util/Locale;Lcom/google/googlenav/common/io/b/a;)V

    .line 411
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 397
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/d;->a:Ljava/util/Locale;

    .line 398
    return-void
.end method
