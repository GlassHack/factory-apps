.class public final Lcom/google/android/gms/auth/login/p;
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/p;->a:Z

    .line 148
    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/p;->b:Z

    .line 153
    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/p;->c:Z

    .line 158
    iput v0, p0, Lcom/google/android/gms/auth/login/p;->d:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/p;->e:Ljava/lang/String;

    return-void
.end method
