.class public final Lcom/google/android/maps/driveabout/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/SharedPreferences$Editor;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->a:Landroid/content/SharedPreferences;

    .line 152
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->b:Landroid/content/SharedPreferences$Editor;

    .line 153
    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/t;->c:Ljava/lang/String;

    .line 154
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/maps/driveabout/util/s;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object p1

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/maps/driveabout/util/t;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/google/googlenav/common/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 189
    return-object p0

    .line 181
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 183
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 186
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
