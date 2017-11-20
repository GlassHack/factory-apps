.class final Lcom/google/android/gms/playlog/uploader/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/f/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/playlog/uploader/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/google/android/gms/playlog/uploader/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/playlog/uploader/e;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/d;->b:Lcom/google/android/gms/playlog/uploader/e;

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/playlog/uploader/d;->a:Landroid/content/Context;

    .line 128
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "NID"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/c;

    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/playlog/uploader/d;->b:Lcom/google/android/gms/playlog/uploader/e;

    new-instance v3, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-direct {v3, p1}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/pseudonymous/service/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/pseudonymous/service/c;->a(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/a;

    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/playlog/uploader/d;->b:Lcom/google/android/gms/playlog/uploader/e;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/pseudonymous/service/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/pseudonymous/service/a;->a(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/d;->b:Lcom/google/android/gms/playlog/uploader/e;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/e;->a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
