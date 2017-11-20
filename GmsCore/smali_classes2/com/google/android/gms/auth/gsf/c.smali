.class public final Lcom/google/android/gms/auth/gsf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/c;->a:Z

    .line 185
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/c;->b:Z

    .line 190
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/c;->c:Z

    .line 195
    iput v0, p0, Lcom/google/android/gms/auth/gsf/c;->d:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/c;->e:Ljava/lang/String;

    return-void
.end method
