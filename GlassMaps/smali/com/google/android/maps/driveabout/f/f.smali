.class public final Lcom/google/android/maps/driveabout/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "[0-9]+[A-Z]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/f/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    .line 34
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/f/f;->d:Z

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/maps/driveabout/f/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/f/f;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/f/f;

    if-eqz v2, :cond_5

    .line 54
    check-cast p1, Lcom/google/android/maps/driveabout/f/f;

    .line 55
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/f/f;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/f/f;->d:Z

    iget-boolean v3, p1, Lcom/google/android/maps/driveabout/f/f;->d:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/f;->c:Ljava/lang/String;

    return-object v0
.end method
