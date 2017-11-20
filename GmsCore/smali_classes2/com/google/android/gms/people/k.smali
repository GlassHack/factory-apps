.class public final Lcom/google/android/gms/people/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/d;

.field static final b:Lcom/google/android/gms/common/api/c;

.field public static final c:Lcom/google/android/gms/common/api/a;

.field public static final d:Lcom/google/android/gms/people/identity/a;

.field public static final e:Lcom/google/android/gms/people/c;

.field public static final f:Lcom/google/android/gms/people/e;

.field public static final g:Lcom/google/android/gms/people/f;

.field public static final h:Lcom/google/android/gms/people/x;

.field public static final i:Lcom/google/android/gms/people/a;

.field public static final j:Lcom/google/android/gms/people/h;

.field public static final k:Lcom/google/android/gms/people/i;

.field public static final l:Lcom/google/android/gms/people/b;

.field public static final m:Lcom/google/android/gms/people/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->a:Lcom/google/android/gms/common/api/d;

    .line 116
    new-instance v0, Lcom/google/android/gms/people/l;

    invoke-direct {v0}, Lcom/google/android/gms/people/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->b:Lcom/google/android/gms/common/api/c;

    .line 141
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/people/k;->b:Lcom/google/android/gms/common/api/c;

    sget-object v2, Lcom/google/android/gms/people/k;->a:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/people/k;->c:Lcom/google/android/gms/common/api/a;

    .line 149
    new-instance v0, Lcom/google/android/gms/people/identity/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->d:Lcom/google/android/gms/people/identity/a;

    .line 157
    new-instance v0, Lcom/google/android/gms/people/internal/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->e:Lcom/google/android/gms/people/c;

    .line 165
    new-instance v0, Lcom/google/android/gms/people/internal/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->f:Lcom/google/android/gms/people/e;

    .line 171
    new-instance v0, Lcom/google/android/gms/people/internal/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->g:Lcom/google/android/gms/people/f;

    .line 177
    new-instance v0, Lcom/google/android/gms/people/internal/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->h:Lcom/google/android/gms/people/x;

    .line 183
    new-instance v0, Lcom/google/android/gms/people/internal/b/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->i:Lcom/google/android/gms/people/a;

    .line 189
    new-instance v0, Lcom/google/android/gms/people/internal/b/k;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->j:Lcom/google/android/gms/people/h;

    .line 194
    new-instance v0, Lcom/google/android/gms/people/internal/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->k:Lcom/google/android/gms/people/i;

    .line 202
    new-instance v0, Lcom/google/android/gms/people/internal/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->l:Lcom/google/android/gms/people/b;

    .line 208
    new-instance v0, Lcom/google/android/gms/people/internal/b/m;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/k;->m:Lcom/google/android/gms/people/j;

    return-void
.end method
