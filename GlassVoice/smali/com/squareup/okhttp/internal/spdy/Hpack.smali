.class final Lcom/squareup/okhttp/internal/spdy/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;,
        Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;
    }
.end annotation


# static fields
.field static final INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFIX_5_BITS:I = 0x1f

.field static final PREFIX_6_BITS:I = 0x3f

.field static final PREFIX_7_BITS:I = 0x7f

.field static final PREFIX_8_BITS:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":scheme"

    aput-object v1, v0, v3

    const-string v1, "http"

    aput-object v1, v0, v4

    const-string v1, ":scheme"

    aput-object v1, v0, v5

    const-string v1, "https"

    aput-object v1, v0, v6

    const-string v1, ":host"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":method"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accept"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "accept-charset"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "accept-encoding"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "accept-language"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cookie"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "if-modified-since"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "user-agent"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "referer"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "authorization"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "allow"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "expect"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "from"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "if-match"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "if-none-match"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "if-range"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "if-unmodified-since"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "max-forwards"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "proxy-authorization"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "range"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "via"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->INITIAL_CLIENT_TO_SERVER_HEADER_TABLE:Ljava/util/List;

    .line 54
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":status"

    aput-object v1, v0, v3

    const-string v1, "200"

    aput-object v1, v0, v4

    const-string v1, "age"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, "cache-control"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "last-modified"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "server"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "set-cookie"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "vary"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "via"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "access-control-allow-origin"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "accept-ranges"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "allow"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "content-encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "content-language"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "content-location"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "content-range"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "proxy-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "retry-after"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "strict-transport-security"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "transfer-encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "www-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Hpack;->INITIAL_SERVER_TO_CLIENT_HEADER_TABLE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method
