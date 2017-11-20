.class public Lcom/google/glass/stylesheet/StylesheetProviderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.sync"

.field public static final STYLESHEET_BLOB:Ljava/lang/String; = "stylesheet_blob"

.field public static final STYLESHEET_FILENAME:Ljava/lang/String; = "base_style_kitkat_1.css"

.field public static final STYLESHEET_FINGERPRINT:Ljava/lang/String; = "stylesheet_fingerprint"

.field public static final STYLESHEET_FINGERPRINT_COLUMN:I = 0x1

.field public static final STYLESHEET_STRING:Ljava/lang/String; = "stylesheet_string"

.field public static final STYLESHEET_STRING_COLUMN:I = 0x0

.field public static final STYLESHEET_TABLE:Ljava/lang/String; = "stylesheet"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.google.glass.sync"

    .line 20
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stylesheet"

    .line 22
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/stylesheet/StylesheetProviderConstants;->URI:Landroid/net/Uri;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
