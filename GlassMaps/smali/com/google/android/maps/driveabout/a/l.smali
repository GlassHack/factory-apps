.class final Lcom/google/android/maps/driveabout/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/d;

.field private final b:Lcom/google/android/maps/driveabout/a/at;

.field private c:Lcom/google/android/maps/driveabout/a/as;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/l;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/l;->b:Lcom/google/android/maps/driveabout/a/at;

    .line 153
    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/l;->c:Lcom/google/android/maps/driveabout/a/as;

    .line 154
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/a/l;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iput-object v2, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    .line 166
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->c:Lcom/google/android/maps/driveabout/a/as;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->c:Lcom/google/android/maps/driveabout/a/as;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/l;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v0, v1, p1}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->c:Lcom/google/android/maps/driveabout/a/as;

    .line 204
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/l;->e:Ljava/io/File;

    .line 175
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/a/h;
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/l;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/l;->a()V

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/a/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/l;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/d;->b(Lcom/google/android/maps/driveabout/a/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/l;->e:Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/a/l;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/a/d;->c(Lcom/google/android/maps/driveabout/a/d;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_0
.end method
